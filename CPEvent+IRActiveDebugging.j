//	CPEvent+IRActiveDebugging.j
//	Evadne Wu at Iridia, 2010
	
	
	
	

@implementation CPEvent (IRActiveDebugging)

- (CPString) description {

	var information = [CPMutableDictionary dictionary];
	var i = /* (CPString) */ function (anJSObject) {	return String(anJSObject || "N/A");	};

	[information setObject:i([self clickCount]) forKey:@"Click Count"];
	
	[information setObject:i([[self class] mouseLocation].x) forKey:@"Current Mouse X"];
	[information setObject:i([[self class] mouseLocation].y) forKey:@"Current Mouse Y"];
	
	return [super description] + [information description];
	
}





@end




