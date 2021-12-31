class CacheRequest {
  late String resultCode;
  late PageInfo pageInfo;

  CacheRequest({required this.resultCode, required this.pageInfo});

  CacheRequest.fromJson(Map<String, dynamic> json) {
    resultCode = json['ResultCode'];
    pageInfo = (json['PageInfo'] != null
        ? new PageInfo.fromJson(json['PageInfo'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResultCode'] = this.resultCode;
    if (this.pageInfo != null) {
      data['PageInfo'] = this.pageInfo.toJson();
    }
    return data;
  }
}

class PageInfo {
  late int offset;

  PageInfo({required this.offset});

  PageInfo.fromJson(Map<String, dynamic> json) {
    offset = json['Offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Offset'] = this.offset;
    return data;
  }
}
