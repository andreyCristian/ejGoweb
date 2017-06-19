package routers

import (
	"github.com/astaxie/beego"
)

func init() {

	beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:ComentarioController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:GaleriaController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			Params: nil})

	beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"] = append(beego.GlobalControllerRouter["Goweb/base/controllers:TecnicaController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			Params: nil})

}
