import 'package:flutter/material.dart';

class GetSearchBar extends StatelessWidget {
  final bool isSearchExpanded;
  final VoidCallback onSearchIconPressed;
  final VoidCallback onSearchFieldTapped;

  const GetSearchBar({
    super.key,
    required this.isSearchExpanded,
    required this.onSearchIconPressed,
    required this.onSearchFieldTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 8),
                        Expanded(
                          child: GestureDetector(
                            onTap: onSearchFieldTapped,
                            child: Text(
                              'Search',
                              style: TextStyle(
                                color: isSearchExpanded
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: onSearchIconPressed,
              ),
            ],
          ),
          if (isSearchExpanded)
            SizedBox(
              height: 200, // 확장될 높이 설정
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(8),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Searches',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    // 최근 검색어 표시 등을 여기에 추가할 수 있습니다.
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
