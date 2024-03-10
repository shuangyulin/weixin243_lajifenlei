const menu = {
    list() {
        return [
    {
        "backMenu":[
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
    {
        "backMenu":[
			{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"意见反馈",
                        "menuJump":"列表",
                        "tableName":"chat"
                    }
                ],
                "menu":"意见反馈"
            }
			,
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                        ],
                        "menu":"环保视频",
                        "menuJump":"列表",
                        "tableName":"huanbaoshipin"
                    }
                ],
                "menu":"环保视频"
            }
			,
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                        ],
                        "menu":"环保知识",
                        "menuJump":"列表",
                        "tableName":"huanbaozhishi"
                    }
                ],
                "menu":"环保知识"
            }
			,
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                        ],
                        "menu":"垃圾信息",
                        "menuJump":"列表",
                        "tableName":"lajixinxi"
                    }
                ],
                "menu":"垃圾信息"
            }
            ,
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"环保新闻管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"环保新闻"
            }
			,
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"错题本",
                        "tableName":"examrewrongquestion"
                    },
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"知识问答试卷列表",
                        "tableName":"exampaper"
                    },
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"测试记录",
                        "tableName":"examrecord"
                    }
                ],
                "menu":"测试管理"
            }
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"是",
        "hasFrontRegister":"是",
        "roleName":"用户",
        "tableName":"yonghu"
    }
]

	}
}
export default menu;
