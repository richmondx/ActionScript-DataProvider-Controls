/**
 * ActionScript Data Provider Controls
 * 
 * Copyright (c) 2010 Jens Struwe, http://www.sibirjak.com/
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package com.sibirjak.asdpcbeta.colorpicker.skins {
	import com.sibirjak.asdpc.core.Skin;

	import flash.display.Shape;

	/**
	 * @author jes 08.12.2009
	 */
	public class ColorPickerIconSkin extends Skin {
		
		public static const style_color : String = "colorPickerIconSkin_color";
		public static const style_size : String = "colorPickerIconSkin_size";
		
		public function ColorPickerIconSkin() {
			setDefaultStyles([
				style_color, 0x666666,
				style_size, 8,
			]);
		}

		override protected function draw() : void {
			var icon : Shape = new Shape();
			
			var size : uint = getStyle(style_size);

			with (icon.graphics) {
				beginFill(getStyle(style_color));
				drawRect(0, 0, size, size - 4);
			}

			icon.x = Math.round((_width - size) / 2);
			icon.y = Math.round((_height - size) / 2);

			addChild(icon);
		}
	}
}
