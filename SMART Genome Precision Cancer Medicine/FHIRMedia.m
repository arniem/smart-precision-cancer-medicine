﻿/*
  Copyright (c) 2011-2013, HL7, Inc.
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification, 
  are permitted provided that the following conditions are met:
  
   * Redistributions of source code must retain the above copyright notice, this 
     list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice, 
     this list of conditions and the following disclaimer in the documentation 
     and/or other materials provided with the distribution.
   * Neither the name of HL7 nor the names of its contributors may be used to 
     endorse or promote products derived from this software without specific 
     prior written permission.
  
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
  POSSIBILITY OF SUCH DAMAGE.
  

 * Generated on Fri, May 9, 2014 11:14+1000 for FHIR v0.0.81
 */
/*
 * A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct reference
 */
#import "FHIRMedia.h"

#import "FHIRCode.h"
#import "FHIRCodeableConcept.h"
#import "FHIRIdentifier.h"
#import "FHIRDateTime.h"
#import "FHIRResource.h"
#import "FHIRString.h"
#import "FHIRInteger.h"
#import "FHIRAttachment.h"

#import "FHIRErrorList.h"

@implementation FHIRMedia

- (kMediaType )type
{
    return [FHIREnumHelper parseString:[self.typeElement value] enumType:kEnumTypeMediaType];
}

- (void )setType:(kMediaType )type
{
    [self setTypeElement:[[FHIRCode/*<code>*/ alloc] initWithValue:[FHIREnumHelper enumToString:type enumType:kEnumTypeMediaType]]];
}


- (NSString *)dateTime
{
    if(self.dateTimeElement)
    {
        return [self.dateTimeElement value];
    }
    return nil;
}

- (void )setDateTime:(NSString *)dateTime
{
    if(dateTime)
    {
        [self setDateTimeElement:[[FHIRDateTime alloc] initWithValue:dateTime]];
    }
    else
    {
        [self setDateTimeElement:nil];
    }
}


- (NSString *)deviceName
{
    if(self.deviceNameElement)
    {
        return [self.deviceNameElement value];
    }
    return nil;
}

- (void )setDeviceName:(NSString *)deviceName
{
    if(deviceName)
    {
        [self setDeviceNameElement:[[FHIRString alloc] initWithValue:deviceName]];
    }
    else
    {
        [self setDeviceNameElement:nil];
    }
}


- (NSNumber *)height
{
    if(self.heightElement)
    {
        return [self.heightElement value];
    }
    return nil;
}

- (void )setHeight:(NSNumber *)height
{
    if(height)
    {
        [self setHeightElement:[[FHIRInteger alloc] initWithValue:height]];
    }
    else
    {
        [self setHeightElement:nil];
    }
}


- (NSNumber *)width
{
    if(self.widthElement)
    {
        return [self.widthElement value];
    }
    return nil;
}

- (void )setWidth:(NSNumber *)width
{
    if(width)
    {
        [self setWidthElement:[[FHIRInteger alloc] initWithValue:width]];
    }
    else
    {
        [self setWidthElement:nil];
    }
}


- (NSNumber *)frames
{
    if(self.framesElement)
    {
        return [self.framesElement value];
    }
    return nil;
}

- (void )setFrames:(NSNumber *)frames
{
    if(frames)
    {
        [self setFramesElement:[[FHIRInteger alloc] initWithValue:frames]];
    }
    else
    {
        [self setFramesElement:nil];
    }
}


- (NSNumber *)length
{
    if(self.lengthElement)
    {
        return [self.lengthElement value];
    }
    return nil;
}

- (void )setLength:(NSNumber *)length
{
    if(length)
    {
        [self setLengthElement:[[FHIRInteger alloc] initWithValue:length]];
    }
    else
    {
        [self setLengthElement:nil];
    }
}


- (FHIRErrorList *)validate
{
    FHIRErrorList *result = [[FHIRErrorList alloc] init];
    
    [result addValidation:[super validate]];
    
    if(self.typeElement != nil )
        [result addValidationRange:[self.typeElement validate]];
    if(self.subtype != nil )
        [result addValidationRange:[self.subtype validate]];
    if(self.identifier != nil )
        for(FHIRIdentifier *elem in self.identifier)
            [result addValidationRange:[elem validate]];
    if(self.dateTimeElement != nil )
        [result addValidationRange:[self.dateTimeElement validate]];
    if(self.subject != nil )
        [result addValidationRange:[self.subject validate]];
    if(self.operator_ != nil )
        [result addValidationRange:[self.operator_ validate]];
    if(self.view != nil )
        [result addValidationRange:[self.view validate]];
    if(self.deviceNameElement != nil )
        [result addValidationRange:[self.deviceNameElement validate]];
    if(self.heightElement != nil )
        [result addValidationRange:[self.heightElement validate]];
    if(self.widthElement != nil )
        [result addValidationRange:[self.widthElement validate]];
    if(self.framesElement != nil )
        [result addValidationRange:[self.framesElement validate]];
    if(self.lengthElement != nil )
        [result addValidationRange:[self.lengthElement validate]];
    if(self.content != nil )
        [result addValidationRange:[self.content validate]];
    
    return result;
}

@end
