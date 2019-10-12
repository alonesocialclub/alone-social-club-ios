//
//  PostEditorViewControllerSpec.swift
//  AloneSocialClubTests
//
//  Created by Suyeol Jeon on 2019/10/13.
//

import Pure
@testable import AloneSocialClub

extension Factory where Module == PostEditorViewController {
  static func dummy() -> Factory {
    return .init(dependency: .init(
      reactorFactory: .dummy()
    ))
  }
}
