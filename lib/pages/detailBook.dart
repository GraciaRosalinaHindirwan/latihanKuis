import 'package:flutter/material.dart';
import 'package:latihan_kuis/models/bookModels.dart';
import 'package:latihan_kuis/theme/appColors.dart';

class Detailbook extends StatelessWidget {
  final BookModel book; 

  const Detailbook({
    super.key,
    required this.book,   
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title:Text(
          book.title,
          style: TextStyle(
            color: AppColors.background, 
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Image.network(
                book.imageUrl,
                width: 120,
                height: 200,
                fit: BoxFit.cover,

                 errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.broken_image,
                    size: 100,
                  );
                 }, 
              ),

              SizedBox(height: 16,), 

              Text(
                book.title, 
                style: TextStyle(
                  fontSize: 16, 
                  color: AppColors.textPrimary, 
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "by " + book.author, 
                style: TextStyle(
                  fontSize: 12, 
                  color: AppColors.textSecondary, 
                  fontWeight: FontWeight.normal,
                ),
              ),

              SizedBox(height: 24,),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary,
                    width: 1.5 
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            book.year.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4), 
                          Text(
                            "Year",
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),

                          
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            book.genre,
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4), 
                          Text(
                            "Genre", 
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            book.publisher,
                            textAlign: TextAlign.center, 
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Publisher",
                            textAlign: TextAlign.center,  
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            book.pages.toString(),
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Pages",
                            textAlign: TextAlign.center,  
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            book.rating.toString(),
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Rating",
                            textAlign: TextAlign.center,  
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24,), 

              Text(
                book.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14, 
                  color: AppColors.textPrimary, 
                  fontWeight: FontWeight.w500, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}