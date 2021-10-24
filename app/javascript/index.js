window.onload = function() {
  // タスクを用意
  var tasks = [
    {
    	id: 'id1',
      name: '現地踏査',
      description: '安全確認',
    	start: '2021-01-01',
    	end: '2021-01-3',
    	progress: 100,
    },
    {
    	id: 'id2',
      name: '設計',
      description: '安定計算',
    	start: '2021-01-4',
    	end: '2021-01-5',
    	progress: 100,
    },
    {
    	id: 'id3',
      name: '査定・ヒアリング・契約',
      description: '品質・安全管理',
    	start: '2021-01-5',
    	end: '2021-01-6',
    	progress: 100,
    },
    {
    	id: 'id4',
      name: '施工A',
      description: '舗装',
    	start: '2021-01-7',
    	end: '2021-01-11',
    	progress: 50,
    },
    {
    	id: 'id5',
      name: '施工B',
      description: '1on1',
    	start: '2021-01-12',
    	end: '2021-01-16',
    	progress: 20,
    },
  ];
  
  // gantt をセットアップ
  var gantt = new Gantt("#gantt", tasks, {
    // ダブルクリック時
    on_click: (task) => {
      console.log(task.description);
    },
    // 日付変更時
    on_date_change: (task, start, end) => {
      console.log(`${task.name}: change date`);
    },
    // 進捗変更時
    on_progress_change: (task, progress) => {
      console.log(`${task.name}: change progress to ${progress}%`);
    },
  });
};
  

