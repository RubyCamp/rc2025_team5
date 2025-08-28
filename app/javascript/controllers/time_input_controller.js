import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input"];

  fillCurrentTime() {
    this.inputTarget.value = '1111';
    this.validate();
  }
}
