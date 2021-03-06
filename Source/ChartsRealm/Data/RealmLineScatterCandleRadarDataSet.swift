//
//  RealmLineScatterCandleRadarDataSet.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation

import Charts
import Realm
import Realm.Dynamic

open class RealmLineScatterCandleRadarDataSet: RealmBarLineScatterCandleBubbleDataSet, ILineScatterCandleRadarChartDataSet
{
    // MARK: - Data functions and accessors
    
    // MARK: - Styling functions and accessors
    
    /// Enables / disables the horizontal highlight-indicator. If disabled, the indicator is not drawn.
    open var drawHorizontalHighlightIndicatorEnabled = true
    
    /// Enables / disables the vertical highlight-indicator. If disabled, the indicator is not drawn.
    open var drawVerticalHighlightIndicatorEnabled = true
    
    /// - returns: `true` if horizontal highlight indicator lines are enabled (drawn)
    open var isHorizontalHighlightIndicatorEnabled: Bool { return drawHorizontalHighlightIndicatorEnabled }
    
    /// - returns: `true` if vertical highlight indicator lines are enabled (drawn)
    open var isVerticalHighlightIndicatorEnabled: Bool { return drawVerticalHighlightIndicatorEnabled }
    
    /// Enables / disables both vertical and horizontal highlight-indicators.
    /// :param: enabled
    open func setDrawHighlightIndicators(_ enabled: Bool)
    {
        drawHorizontalHighlightIndicatorEnabled = enabled
        drawVerticalHighlightIndicatorEnabled = enabled
    }
    
    // MARK: NSCopying
    
    open override func copyWithZone(_ zone: NSZone?) -> AnyObject
    {
        let copy = super.copyWithZone(zone) as! RealmLineScatterCandleRadarDataSet
        copy.drawHorizontalHighlightIndicatorEnabled = drawHorizontalHighlightIndicatorEnabled
        copy.drawVerticalHighlightIndicatorEnabled = drawVerticalHighlightIndicatorEnabled
        return copy
    }

}
