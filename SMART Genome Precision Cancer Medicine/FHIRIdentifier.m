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
 * An identifier intended for computation
 */
#import "FHIRIdentifier.h"

#import "FHIRCode.h"
#import "FHIRString.h"
#import "FHIRUri.h"
#import "FHIRPeriod.h"
#import "FHIRResource.h"

#import "FHIRErrorList.h"

@implementation FHIRIdentifier

- (kIdentifierUse )use
{
    return [FHIREnumHelper parseString:[self.useElement value] enumType:kEnumTypeIdentifierUse];
}

- (void )setUse:(kIdentifierUse )use
{
    [self setUseElement:[[FHIRCode/*<code>*/ alloc] initWithValue:[FHIREnumHelper enumToString:use enumType:kEnumTypeIdentifierUse]]];
}


- (NSString *)label
{
    if(self.labelElement)
    {
        return [self.labelElement value];
    }
    return nil;
}

- (void )setLabel:(NSString *)label
{
    if(label)
    {
        [self setLabelElement:[[FHIRString alloc] initWithValue:label]];
    }
    else
    {
        [self setLabelElement:nil];
    }
}


- (NSString *)system
{
    if(self.systemElement)
    {
        return [self.systemElement value];
    }
    return nil;
}

- (void )setSystem:(NSString *)system
{
    if(system)
    {
        [self setSystemElement:[[FHIRUri alloc] initWithValue:system]];
    }
    else
    {
        [self setSystemElement:nil];
    }
}


- (NSString *)value
{
    if(self.valueElement)
    {
        return [self.valueElement value];
    }
    return nil;
}

- (void )setValue:(NSString *)value
{
    if(value)
    {
        [self setValueElement:[[FHIRString alloc] initWithValue:value]];
    }
    else
    {
        [self setValueElement:nil];
    }
}


- (FHIRErrorList *)validate
{
    FHIRErrorList *result = [[FHIRErrorList alloc] init];
    
    [result addValidation:[super validate]];
    
    if(self.useElement != nil )
        [result addValidationRange:[self.useElement validate]];
    if(self.labelElement != nil )
        [result addValidationRange:[self.labelElement validate]];
    if(self.systemElement != nil )
        [result addValidationRange:[self.systemElement validate]];
    if(self.valueElement != nil )
        [result addValidationRange:[self.valueElement validate]];
    if(self.period != nil )
        [result addValidationRange:[self.period validate]];
    if(self.assigner != nil )
        [result addValidationRange:[self.assigner validate]];
    
    return result;
}

@end
