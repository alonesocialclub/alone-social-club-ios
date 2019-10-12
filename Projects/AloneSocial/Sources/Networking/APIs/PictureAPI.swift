//
//  PictureAPI.swift
//  AloneSocial
//
//  Created by Suyeol Jeon on 2019/10/12.
//

import MoyaSugar

enum PictureAPI: BaseAPI {
  case upload(UIImage)
  case image(pictureID: String)
}

extension PictureAPI {
  var route: Route {
    switch self {
    case .upload:
      return .post("/pictures")

    case let .image(pictureID):
      return .get("/pictures/\(pictureID)/image/original")
    }
  }

  var parameters: Parameters? {
    switch self {
    default:
      return nil
    }
  }

  var task: Task {
    switch self {
    case let .upload(image):
      return Task.uploadMultipart(["file": image.optimizedForUpload()].asMultipartFormData())

    default:
      return Task.requestPlain
    }
  }
}
