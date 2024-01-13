import { Controller } from "@hotwired/stimulus"
import { application } from "./application"

export default class extends Controller {
    static targets = ["form", "button", "display"]; //コントローラが操作するDOM要素
    
    //フォームの表示/非表示をtoggleFormメソッドで定義
    toggleForm() {
        this.formTarget.style.display = (this.formTarget.style.display == "none" ? "block" : "none") ;
        this.updateButtonText();
    }
    
    //回答フォーム表示ボタンの文字の切り替え
    updateButtonText() {
        if (this.formTarget.style.display === "block") {
            this.buttonTarget.textContent = "回答フォームを閉じる";
        }
        else {
            this.buttonTarget.textContent = "回答をする";
        }
    }
    
    toggleEditForm(event) {
        //getAttributeは文字列の値を返す
        const answerID = event.currentTarget.getAttribute('data-answer-id');
        const displayElement = this.displayTargets.find(el => el.getAttribute('data-answer-id') === answerID);
        const formElement = this.formTargets.find(el => el.getAttribute('data-answer-id') === answerID);
        
        if (displayElement && formElement) {
            displayElement.style.display = displayElement.style.display === 'none' ? 'block' : 'none';
            formElement.style.display = formElement.style.display === 'none' ? 'block' : 'none';    
        }
   }
}

