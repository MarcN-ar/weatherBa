//
//  DateHelpers.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 10/11/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import Foundation

class DateHelpers {
    
    static func getFormat() ->DateFormatter{
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.setLocalizedDateFormatFromTemplate("eeee")
        return dateFormatter
        
    }
    
}
