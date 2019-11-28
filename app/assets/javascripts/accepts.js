$(window).load(function() {
  $(".user").bgSwitcher({
    images: ['http://gahag.net/img/201607/27s/gahag-0110220437-1.jpg',
             'http://gahag.net/img/201605/20s/gahag-0087939170-1.jpg',
             'http://gahag.net/img/201608/27s/gahag-0119451581-1.jpg',
             'http://gahag.net/img/201601/22s/gahag-0048425628-1.jpg',
             'http://gahag.net/img/201608/05s/gahag-0113251319-1.jpg'], // 切り替える背景画像を指定
    interval: 4000, // 背景画像を切り替える間隔を指定 3000=3秒
    loop: true, // 切り替えを繰り返すか指定 true=繰り返す　false=繰り返さない
    shuffle: true, // 背景画像の順番をシャッフルするか指定 true=する　false=しない
    effect: "fade", // エフェクトの種類をfade,blind,clip,slide,drop,hideから指定
    duration: 3500, // エフェクトの時間を指定します。
    easing: "swing" // エフェクトのイージングをlinear,swingから指定

  });

});