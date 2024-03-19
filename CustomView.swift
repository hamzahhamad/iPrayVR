//
//  CustomView.swift
//
//  Code generated using QuartzCode 1.56.0 on 6/23/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class CustomView: UIView, CAAnimationDelegate {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = false
	
	
	
	//MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupProperties()
		setupLayers()
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		setupProperties()
		setupLayers()
	}
	
	
	
	func setupProperties(){
		
	}
	
	func setupLayers(){
		let Group = CALayer()
		Group.frame = CGRect(x: 24.54, y: 39.81, width: 58.29, height: 20.38)
		self.layer.addSublayer(Group)
		layers["Group"] = Group
		let polygon2 = CAShapeLayer()
		polygon2.frame = CGRect(x: 14, y: 0, width: 44.29, height: 20.38)
		polygon2.path = polygon2Path().cgPath
		Group.addSublayer(polygon2)
		layers["polygon2"] = polygon2
		let polygon2 = CAShapeLayer()
		polygon2.frame = CGRect(x: 7, y: 0, width: 44.29, height: 20.38)
		polygon2.path = polygon2Path().cgPath
		Group.addSublayer(polygon2)
		layers["polygon2"] = polygon2
		let polygon3 = CAShapeLayer()
		polygon3.frame = CGRect(x: 0, y: 0, width: 44.29, height: 20.38)
		polygon3.path = polygon3Path().cgPath
		Group.addSublayer(polygon3)
		layers["polygon3"] = polygon3
		
		resetLayerProperties(forLayerIdentifiers: nil)
	}
	
	func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("polygon2"){
			let polygon2 = layers["polygon2"] as! CAShapeLayer
			polygon2.setValue(-270 * CGFloat(M_PI)/180, forKeyPath:"transform.rotation")
			polygon2.fillColor   = UIColor(red:0.99, green: 1, blue:1, alpha:1).cgColor
			polygon2.strokeColor = UIColor(red:0.957, green: 0.965, blue:0.965, alpha:1).cgColor
		}
		if layerIds == nil || layerIds.contains("polygon2"){
			let polygon2 = layers["polygon2"] as! CAShapeLayer
			polygon2.setValue(-270 * CGFloat(M_PI)/180, forKeyPath:"transform.rotation")
			polygon2.fillColor   = UIColor(red:0.99, green: 1, blue:1, alpha:1).cgColor
			polygon2.strokeColor = UIColor(red:0.957, green: 0.965, blue:0.965, alpha:1).cgColor
		}
		if layerIds == nil || layerIds.contains("polygon3"){
			let polygon3 = layers["polygon3"] as! CAShapeLayer
			polygon3.setValue(-270 * CGFloat(M_PI)/180, forKeyPath:"transform.rotation")
			polygon3.fillColor   = UIColor(red:0.99, green: 1, blue:1, alpha:1).cgColor
			polygon3.strokeColor = UIColor(red:0.956, green: 0.966, blue:0.966, alpha:1).cgColor
		}
		
		CATransaction.commit()
	}
	
	//MARK: - Animation Setup
	
	func addUntitled1Animation(completionBlock: ((_ finished: Bool) -> Void)? = nil){
		if completionBlock != nil{
			let completionAnim = CABasicAnimation(keyPath:"completionAnim")
			completionAnim.duration = 1.495
			completionAnim.delegate = self
			completionAnim.setValue("Untitled1", forKey:"animId")
			completionAnim.setValue(false, forKey:"needEndAnim")
			layer.add(completionAnim, forKey:"Untitled1")
			if let anim = layer.animation(forKey: "Untitled1"){
				completionBlocks[anim] = completionBlock
			}
		}
		
		let fillMode : String = kCAFillModeForwards
		
		////Polygon2 animation
		let polygon2OpacityAnim       = CAKeyframeAnimation(keyPath:"opacity")
		polygon2OpacityAnim.values    = [1, 0]
		polygon2OpacityAnim.keyTimes  = [0, 1]
		polygon2OpacityAnim.duration  = 0.498
		polygon2OpacityAnim.beginTime = 0.997
		
		let polygon2Untitled1Anim : CAAnimationGroup = QCMethod.group(animations: [polygon2OpacityAnim], fillMode:fillMode)
		layers["polygon2"]?.add(polygon2Untitled1Anim, forKey:"polygon2Untitled1Anim")
		
		////Polygon2 animation
		let polygon2OpacityAnim       = CAKeyframeAnimation(keyPath:"opacity")
		polygon2OpacityAnim.values    = [1, 0]
		polygon2OpacityAnim.keyTimes  = [0, 1]
		polygon2OpacityAnim.duration  = 0.498
		polygon2OpacityAnim.beginTime = 0.498
		
		let polygon2Untitled1Anim : CAAnimationGroup = QCMethod.group(animations: [polygon2OpacityAnim], fillMode:fillMode)
		layers["polygon2"]?.add(polygon2Untitled1Anim, forKey:"polygon2Untitled1Anim")
		
		////Polygon3 animation
		let polygon3OpacityAnim      = CAKeyframeAnimation(keyPath:"opacity")
		polygon3OpacityAnim.values   = [1, 0]
		polygon3OpacityAnim.keyTimes = [0, 1]
		polygon3OpacityAnim.duration = 0.498
		
		let polygon3Untitled1Anim : CAAnimationGroup = QCMethod.group(animations: [polygon3OpacityAnim], fillMode:fillMode)
		layers["polygon3"]?.add(polygon3Untitled1Anim, forKey:"polygon3Untitled1Anim")
	}
	
	//MARK: - Animation Cleanup
	
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValue(forKey: anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
				updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
				removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValues(forAnimationId identifier: String){
		if identifier == "Untitled1"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["polygon2"] as! CALayer).animation(forKey: "polygon2Untitled1Anim"), theLayer:(layers["polygon2"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["polygon2"] as! CALayer).animation(forKey: "polygon2Untitled1Anim"), theLayer:(layers["polygon2"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["polygon3"] as! CALayer).animation(forKey: "polygon3Untitled1Anim"), theLayer:(layers["polygon3"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "Untitled1"{
			(layers["polygon2"] as! CALayer).removeAnimation(forKey: "polygon2Untitled1Anim")
			(layers["polygon2"] as! CALayer).removeAnimation(forKey: "polygon2Untitled1Anim")
			(layers["polygon3"] as! CALayer).removeAnimation(forKey: "polygon3Untitled1Anim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func polygon2Path() -> UIBezierPath{
		let polygon2Path = UIBezierPath()
		polygon2Path.move(to: CGPoint(x: 22.146, y: 0))
		polygon2Path.addLine(to: CGPoint(x: 0, y: 20.38))
		polygon2Path.addLine(to: CGPoint(x: 44.293, y: 20.38))
		polygon2Path.close()
		polygon2Path.move(to: CGPoint(x: 22.146, y: 0))
		
		return polygon2Path
	}
	
	func polygon3Path() -> UIBezierPath{
		let polygon3Path = UIBezierPath()
		polygon3Path.move(to: CGPoint(x: 22.146, y: 0))
		polygon3Path.addLine(to: CGPoint(x: 0, y: 20.38))
		polygon3Path.addLine(to: CGPoint(x: 44.293, y: 20.38))
		polygon3Path.close()
		polygon3Path.move(to: CGPoint(x: 22.146, y: 0))
		
		return polygon3Path
	}
	
	
}
