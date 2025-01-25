---
hide:
   - navigation # 显示右
   - toc #显示左
---

# Home
<center>
[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=25&pause=1000&width=435&lines=Hi+there%2C+this+is+Hulu's+blog)](https://git.io/typing-svg)</center><center>
<font  color= #518FC1 size=6 class="ml3">“我愿化身石桥”</font></center>
<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
<center>
<div id="rcorners2" >

<div id="rcorners1" class="date-display">
    <p class="p1"></p>
</div>

<style>
    .date-display {
        color: #4351AF;
    }
</style>
<script defer>
    function format(newDate) {
        const day = newDate.getDay();
        const y = newDate.getFullYear();
        const m = newDate.getMonth() + 1 < 10 ? `0${newDate.getMonth() + 1}` : newDate.getMonth() + 1;
        const d = newDate.getDate() < 10 ? `0${newDate.getDate()}` : newDate.getDate();
        const h = newDate.getHours() < 10 ? `0${newDate.getHours()}` : newDate.getHours();
        const min = newDate.getMinutes() < 10 ? `0${newDate.getMinutes()}` : newDate.getMinutes();
        const s = newDate.getSeconds() < 10 ? `0${newDate.getSeconds()}` : newDate.getSeconds();
        const dict = {1: "一", 2: "二", 3: "三", 4: "四", 5: "五", 6: "六", 0: "天"};

        return `${y}年${m}月${d}日 ${h}:${min}:${s} 星期${dict[day]}`;
    }
    
    const timerId = setInterval(() => {
        const newDate = new Date();
        const p1 = document.querySelector(".p1");
        if (p1) {
            p1.textContent = format(newDate);
        }
    }, 1000);
</script>
</div> 

</center>
!!!success "Music for today"
    <center><font size=4>
    [春风吹](https://tool.liumingye.cn/music/#/search/M/song/%E6%98%A5%E9%A3%8E%E5%90%B9) ———— 方大同</font>
    </center>
!!! abstract "Enjoy the fucking life"
    <center><font size=4>I went to the woods because I wanted to live deliberately.  
    I wanted to live deep and suck out all the marrow of life!  
    To put to rout all that was not life.  
    And not,  
    when I came to die,  
    discover that I had not lived.  </font></center>

<center><font  color= #518FC1 size=5 class="ml3">May The Force Be With You.</font></center>

快速谈话(1) 联系我(2)
{ .annotate }

1. wechat: chinahaizeiwang
2. 18405703031
***

[^Knowing-that-loving-you-has-no-ending]:建议启用外网以体验网站完整功能  
[^see-how-much-I-love-you]:All-problems-in-computer-science-can-be-solved-by-another-level-of-indirection


<style>
#rcorners3 {
  border-radius: 25px;
  border: 2px solid #518FC1;
  padding: 20px;
  width: 100%;
  height: 30%;
  font-size: 18px;
  text-align: center;
}
</style>
<body>
<font color="#5F9F9F">
  <p style="text-align: center; ">
      <span>本站已经运行</span>
      <span id='box1'></span>
</p>
  <div id="box1"></div>
  <script>
    function timingTime(){
      let start = '2024-08-01 00:00:00'
      let startTime = new Date(start).getTime()
      let currentTime = new Date().getTime()
      let difference = currentTime - startTime
      let m =  Math.floor(difference / (1000))
      let mm = m % 60  // 秒
      let f = Math.floor(m / 60)
      let ff = f % 60 // 分钟
      let s = Math.floor(f/ 60) // 小时
      let ss = s % 24
      let day = Math.floor(s  / 24 ) // 天数
      return day + "天" + ss + "时" + ff + "分" + mm +'秒'
    }
    setInterval(()=>{
      document.getElementById('box1').innerHTML = timingTime()
    },1000)
  </script>
  </font>
</body>
