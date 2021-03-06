//
//  Actions.swift
//  TodoMVC
//
//  Created by Adlai Holler on 2/6/16.
//  Copyright © 2016 Adlai Holler. All rights reserved.
//

import Foundation
import CoreData

enum TodoAction {
    case Create
    case BeginEditingTitle(NSManagedObjectID)
    case UpdateText(NSManagedObjectID, String)
    case Delete(NSManagedObjectID)
    case SetCompleted(NSManagedObjectID, Bool)
    case DeleteAllCompleted

    case APICreateSucceeded(temporaryID: TodoItemID, item: TodoItem)
    case APICreateFailed(temporaryID: TodoItemID, error: APIService.Error)

	/// Just a convenience wrapper to dispatch this action onto the global dispatcher.
    func dispatch() {
        appDispatcher.dispatch(self)
    }
}