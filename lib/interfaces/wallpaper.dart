// To parse this JSON data, do
//
//     final wallpaper = wallpaperFromJson(jsonString);

import 'dart:convert';

List<Wallpaper> wallpaperFromJson(String str) {
    final jsonData = json.decode(str);
    return new List<Wallpaper>.from(jsonData.map((x) => Wallpaper.fromJson(x)));
}

String wallpaperToJson(List<Wallpaper> data) {
    final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
    return json.encode(dyn);
}

class Wallpaper {
    String id;
    String createdAt;
    String updatedAt;
    int width;
    int height;
    String color;
    dynamic description;
    Urls urls;
    WallpaperLinks links;
    List<dynamic> categories;
    bool sponsored;
    dynamic sponsoredBy;
    dynamic sponsoredImpressionsId;
    int likes;
    bool likedByUser;
    List<dynamic> currentUserCollections;
    dynamic slug;
    User user;

    Wallpaper({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.width,
        this.height,
        this.color,
        this.description,
        this.urls,
        this.links,
        this.categories,
        this.sponsored,
        this.sponsoredBy,
        this.sponsoredImpressionsId,
        this.likes,
        this.likedByUser,
        this.currentUserCollections,
        this.slug,
        this.user,
    });

    factory Wallpaper.fromJson(Map<String, dynamic> json) => new Wallpaper(
        id: json["id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        width: json["width"],
        height: json["height"],
        color: json["color"],
        description: json["description"],
        urls: Urls.fromJson(json["urls"]),
        links: WallpaperLinks.fromJson(json["links"]),
        categories: new List<dynamic>.from(json["categories"].map((x) => x)),
        sponsored: json["sponsored"],
        sponsoredBy: json["sponsored_by"],
        sponsoredImpressionsId: json["sponsored_impressions_id"],
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections: new List<dynamic>.from(json["current_user_collections"].map((x) => x)),
        slug: json["slug"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "width": width,
        "height": height,
        "color": color,
        "description": description,
        "urls": urls.toJson(),
        "links": links.toJson(),
        "categories": new List<dynamic>.from(categories.map((x) => x)),
        "sponsored": sponsored,
        "sponsored_by": sponsoredBy,
        "sponsored_impressions_id": sponsoredImpressionsId,
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections": new List<dynamic>.from(currentUserCollections.map((x) => x)),
        "slug": slug,
        "user": user.toJson(),
    };
}

class WallpaperLinks {
    String self;
    String html;
    String download;
    String downloadLocation;

    WallpaperLinks({
        this.self,
        this.html,
        this.download,
        this.downloadLocation,
    });

    factory WallpaperLinks.fromJson(Map<String, dynamic> json) => new WallpaperLinks(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
    );

    Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
    };
}

class Urls {
    String raw;
    String full;
    String regular;
    String small;
    String thumb;

    Urls({
        this.raw,
        this.full,
        this.regular,
        this.small,
        this.thumb,
    });

    factory Urls.fromJson(Map<String, dynamic> json) => new Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
    );

    Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
    };
}

class User {
    String id;
    String updatedAt;
    String username;
    String name;
    String firstName;
    String lastName;
    String twitterUsername;
    String portfolioUrl;
    String bio;
    String location;
    UserLinks links;
    ProfileImage profileImage;
    String instagramUsername;
    int totalCollections;
    int totalLikes;
    int totalPhotos;
    bool acceptedTos;

    User({
        this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.acceptedTos,
    });

    factory User.fromJson(Map<String, dynamic> json) => new User(
        id: json["id"],
        updatedAt: json["updated_at"],
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        twitterUsername: json["twitter_username"] == null ? null : json["twitter_username"],
        portfolioUrl: json["portfolio_url"] == null ? null : json["portfolio_url"],
        bio: json["bio"] == null ? null : json["bio"],
        location: json["location"] == null ? null : json["location"],
        links: UserLinks.fromJson(json["links"]),
        profileImage: ProfileImage.fromJson(json["profile_image"]),
        instagramUsername: json["instagram_username"] == null ? null : json["instagram_username"],
        totalCollections: json["total_collections"],
        totalLikes: json["total_likes"],
        totalPhotos: json["total_photos"],
        acceptedTos: json["accepted_tos"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "updated_at": updatedAt,
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName == null ? null : lastName,
        "twitter_username": twitterUsername == null ? null : twitterUsername,
        "portfolio_url": portfolioUrl == null ? null : portfolioUrl,
        "bio": bio == null ? null : bio,
        "location": location == null ? null : location,
        "links": links.toJson(),
        "profile_image": profileImage.toJson(),
        "instagram_username": instagramUsername == null ? null : instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "accepted_tos": acceptedTos,
    };
}

class UserLinks {
    String self;
    String html;
    String photos;
    String likes;
    String portfolio;
    String following;
    String followers;

    UserLinks({
        this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers,
    });

    factory UserLinks.fromJson(Map<String, dynamic> json) => new UserLinks(
        self: json["self"],
        html: json["html"],
        photos: json["photos"],
        likes: json["likes"],
        portfolio: json["portfolio"],
        following: json["following"],
        followers: json["followers"],
    );

    Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
        "following": following,
        "followers": followers,
    };
}

class ProfileImage {
    String small;
    String medium;
    String large;

    ProfileImage({
        this.small,
        this.medium,
        this.large,
    });

    factory ProfileImage.fromJson(Map<String, dynamic> json) => new ProfileImage(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
    );

    Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
    };
}
