
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["commentErrors"]

  onPostSuccess(event) {
    console.log("success")
  }

  onPostError(event) {
    console.log("coucou")
    let [data, status, xhr] = event.detail;
    this.commentErrorsTarget.innerHTML = xhr.response;
  }
}