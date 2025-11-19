import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myshopmini/data/category_data.dart';
import '../models/product.dart';
import 'package:myshopmini/widgets/header.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    const accent = Color(0xFF8B6F4E);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final price = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(product.price);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.88, end: 1),
          duration: const Duration(milliseconds: 380),
          curve: Curves.easeOutCubic,

          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 50 * (1 - value)),
                child: child,
              ),
            );
          },

          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 6),

                ModernHeader(
                  title: 'Detail Produk',
                  onBack: () => Navigator.of(context).pop(),
                ),

                // ------------------------------------------------------
                // PRODUCT IMAGE (Hero)
                // ------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Hero(
                    tag: product.imagePath,
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(isDark ? 0.3 : 0.07),
                            blurRadius: 26,
                            offset: const Offset(0, 12),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        product.imagePath,
                        height: 240,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // ------------------------------------------------------
                // PRODUCT NAME (moved here — elegant layout)
                // ------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.2,
                      color: isDark ? Colors.white : const Color(0xFF1F1F1F),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // ------------------------------------------------------
                // PRICE
                // ------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: isDark ? Colors.white70 : Colors.black87,
                    ),
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
