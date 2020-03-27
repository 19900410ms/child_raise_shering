$(window).load(function() {
  /* $(".user").bgSwitcher({
    images: ['http://gahag.net/img/201608/05s/gahag-0113251319-1.jpg',
             'http://gahag.net/img/201607/27s/gahag-0110220437-1.jpg',
             'http://gahag.net/img/201601/22s/gahag-0048425628-1.jpg',
             'http://gahag.net/img/201605/20s/gahag-0087939170-1.jpg',
             'http://gahag.net/img/201608/27s/gahag-0119451581-1.jpg'],
    interval: 3000, // 背景画像を切り替える間隔を指定 3000=3秒
    loop: true, // 切り替えを繰り返すか指定 true=繰り返す false=繰り返さない
    shuffle: true, // 背景画像の順番をシャッフルするか指定 true=する false=しない
    effect: "fade", // エフェクトの種類をfade,blind,clip,slide,drop,hideから指定
    duration: 2500, // エフェクトの時間を指定します。
    easing: "swing" // エフェクトのイージングをlinear,swingから指定
  });
*/
  $('.offer').vegas({
    slides: [
      { src: "http://gahag.net/img/201608/05s/gahag-0113251319-1.jpg"},
      { src: "https://www.sheknows.com/wp-content/uploads/2018/12/cool_baby_pwrap5.jpeg"},
      { src: "https://find-model.jp/insta-lab/wp-content/uploads/2019/06/kids-baby.jpg"},
      { src: "https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"},
      { src: "https://www.nurseryworld.co.uk/media/91041/toddler-and-dad-kitchen-table.jpg?&width=780&quality=60"}
    ],
    animation: 'kenburns',
    //overlay: './js/overlays/02.png', //フォルダ『overlays』の中からオーバーレイのパターン画像を選択
    transition: 'zoomOut', //スライドを遷移させる際のアニメーション
    transitionDuration: 2500, //スライドの遷移アニメーションの時間
    delay: 3000, //スライド切り替え時の遅延時間
    animation: 'random', //スライド表示中のアニメーション
    animationDuration: 2500, //スライド表示中のアニメーションの時間
    loop: true,
  });
});