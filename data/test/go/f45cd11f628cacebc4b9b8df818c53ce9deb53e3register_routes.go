// Generated by tools/gen_routes

package register

import (
	. "app/consts"
	"app/controllers"
	"gslib"
	"gslib/routes"
)

func Load() {
    routes.Add("EquipLoadParams", func(ctx interface{}, params interface{}) (string, interface{}) {
        instance := &controllers.EquipsController{Ctx: ctx.(*gslib.Player)}
        return instance.Load(params.(*EquipLoadParams))
    })
    routes.Add("EquipUnLoadParams", func(ctx interface{}, params interface{}) (string, interface{}) {
        instance := &controllers.EquipsController{Ctx: ctx.(*gslib.Player)}
        return instance.UnLoad(params.(*EquipUnLoadParams))
    })

}
