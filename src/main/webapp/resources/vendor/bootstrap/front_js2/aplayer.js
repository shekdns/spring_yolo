
//NOW I CLICK album-poster to get current song ID
		$(".album-poster").on('click', function(e){
			var dataSwitchId = $(this).attr('data-switch');
			//console.log(dataSwitchId);
            
            if(dataSwitchId == 0){
              ap.list.add([
                 {
                name: '01. Make Me Love You',  //SONG NAME
                artist: '태연', // ARTIST NAME
                url: 'mp3/01. Make Me Love You.mp3',  //PATH NAME AND SONG URL
                cover: 'https://img.insight.co.kr/static/2017/04/05/700/GDW2BO25B4W7D363A8VX.jpg',  //IMAGE
                lrc: 'lrc/aaa.lrc',
                theme: '#ebd0c2'
                }
            
                ]);
                	// and now i use aplayer switch function see
			ap.list.switch(dataSwitchId); //this is static id but i use dynamic
            ap.play();
            }
            

            if(dataSwitchId == 1){
                ap.list.add([
                    {
                    name: 'KNOCK KNOCK - Twice',
                    artist: 'Twice',
                    url: 'mp3/KNOCK KNOCK - Twice.mp3',
                    cover: 'https://i.ytimg.com/vi/juhcxR__LxM/hqdefault.jpg',
                    lrc: 'lrc/bbb.lrc',
                    theme: '#46718b'
                    }
                ]);
                
                // and now i use aplayer switch function see
			ap.list.switch(dataSwitchId); //this is static id but i use dynamic
            ap.play();
            }	

            if(dataSwitchId == 2){
                ap.list.add([
                    {
                    name: 'Lalarilala - 에이프릴',
                    artist: '에이프릴',
                    url: 'mp3/APRIL (에이프릴)  LALALILALA (라라리라라).mp3',
                    cover: 'https://t1.daumcdn.net/cfile/tistory/9971BB4E5EA040A432',
                    // lrc: 'lrc/ccc.lrc',
                    lrc: 'lrc/12.txt',
                    theme: '#46718b'
                    }
                ]);
                
                // and now i use aplayer switch function see
			ap.list.switch(dataSwitchId); //this is static id but i use dynamic
            ap.play();
            }

            if(dataSwitchId == 4){
                ap.list.add([
                    {
                    name: 'シン·ドンワンと申します。 - 2020',
                    artist: '신동완',
                    url: 'mp3/모시마스.mp3',
                    cover: '자기야1.jpg',
                    lrc: '',
                    theme: '#46718b'
                    }
                ]);
                
                // and now i use aplayer switch function see
			ap.list.switch(dataSwitchId); //this is static id but i use dynamic
            ap.play();
            }


              // 	aplayer play function
			// when i click any song to play
			// ap.play();
			

			// click to slideUp player see
			$("#player").addClass('showPlayer');
          
        });
        
        $(".dbutton").on('click', function(e){
            ap.list.remove(0);


        }) ;       


      

// const ap = new APlayer({
//     container: document.getElementById('aplayer'),
//     listFolded: true,
//     audio: [{
//         name: '01. Make Me Love You',  //SONG NAME
//         artist: '태연', // ARTIST NAME
//         url: 'mp3/01. Make Me Love You.mp3',  //PATH NAME AND SONG URL
//         cover: 'https://img.insight.co.kr/static/2017/04/05/700/GDW2BO25B4W7D363A8VX.jpg'  //IMAGE
//     },
//     {
        // name: 'KNOCK KNOCK - Twice',
        // artist: 'Twice',
        // url: 'mp3/KNOCK KNOCK - Twice.mp3',
        // cover: 'https://i.ytimg.com/vi/juhcxR__LxM/hqdefault.jpg'
//     },


//   ]
// });



const ap = new APlayer({
    container: document.getElementById('player'),
    mini: false,
    autoplay: false,
    theme: '#FADFA3',
    loop: 'all',
    order: 'random',
    preload: 'auto',
    volume: 0.7,
    mutex: true,
    listFolded: true,
    listMaxHeight: 90,
    lrcType: 3,
    // audio: [
    //     {
    //         name: '01. Make Me Love You',  //SONG NAME
    //         artist: '태연', // ARTIST NAME
    //         url: 'mp3/01. Make Me Love You.mp3',  //PATH NAME AND SONG URL
    //         cover: 'https://img.insight.co.kr/static/2017/04/05/700/GDW2BO25B4W7D363A8VX.jpg',  //IMAGE
    //         lrc: 'lrc/aaa.lrc',
    //         theme: '#ebd0c2'
    //     },
    //     {
    //         name: 'KNOCK KNOCK - Twice',
    //         artist: 'Twice',
    //         url: 'mp3/KNOCK KNOCK - Twice.mp3',
    //         cover: 'https://i.ytimg.com/vi/juhcxR__LxM/hqdefault.jpg',
    //         lrc: 'lrc/bbb.lrc',
    //         theme: '#46718b'
    //     }
    // ]
});
