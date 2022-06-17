import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Dream. Design. Build."],
      typeSpeed: 90,
      loop: true,
      showCursor: false,
      backDelay: 2000,
      // startDelay: 700,
    });
  }
}
