import 'web-animations-js/web-animations-next.min.js'

const element = document.querySelector(".user");
element.animate(
  {
    filter: [
      "grayscale(0%)",
      "grayscale(100%)"
    ]
  },
  {
  duration: 500,
  fill: "forwards",
  easing: "ease"
  }
);