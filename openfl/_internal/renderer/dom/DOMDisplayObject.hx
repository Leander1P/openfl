package openfl._internal.renderer.dom;


import lime.math.color.ARGB;
import openfl.display.DisplayObject;

@:access(openfl.display.DisplayObject)
@:access(openfl.geom.Matrix)


class DOMDisplayObject {
	
	
	public static inline function render (displayObject:DisplayObject, renderSession:RenderSession):Void {
		
		#if (js && html5)
		if (displayObject.opaqueBackground == null && displayObject.__graphics == null) return;
		if (!displayObject.__renderable || displayObject.__worldAlpha <= 0) return;
		
		if (displayObject.opaqueBackground != null && displayObject.width > 0 && displayObject.height > 0) {
			
			//renderSession.maskManager.pushObject (displayObject);
			
			// TODO: opaqueBackground using DIV element
			
			//renderSession.maskManager.popObject (displayObject);
			
		}
		
		if (displayObject.__graphics != null) {
			
			DOMShape.render (displayObject, renderSession);
			
		}
		#end
		
	}
	
	
}