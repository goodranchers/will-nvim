Vim�UnDo� U���������1���7��|��.��A��+�E*��   &   Bfile1 = "input/recurrin_addons.csv"  # Path to your first CSV file             
       
   
   
    g�^�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             g�^�     �                   �               5��                                         �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             g�^�    �       #              import pandas as pd       >def merge_csv_files(file1: str, file2: str, output_file: str):       """   N    Merge rows from file2 into file1 where the parent_subscription_id matches.       	    Args:   <        file1 (str): Path to the first CSV file (base file).   ?        file2 (str): Path to the second CSV file (lookup file).   ]        output_file (str): Path to the output CSV file where the merged result will be saved.       """   ,    # Load the two CSV files into DataFrames       df1 = pd.read_csv(file1)       df2 = pd.read_csv(file2)       E    # Ensure the column `parent_subscription_id` exists in both files   b    if 'parent_subscription_id' not in df1.columns or 'parent_subscription_id' not in df2.columns:   X        raise ValueError("Both files must contain the 'parent_subscription_id' column.")       6    # Merge the DataFrames on `parent_subscription_id`   L    merged_df = pd.merge(df1, df2, on='parent_subscription_id', how='inner')       1    # Save the merged DataFrame to a new CSV file   .    merged_df.to_csv(output_file, index=False)       # Example Usage   2file1 = 'file1.csv'  # Path to your first CSV file   3file2 = 'file2.csv'  # Path to your second CSV file   @output_file = 'merged_output.csv'  # Path to save the merged CSV5��               !   !   !           �      �      5�_�                        	    ����                                                                                                                                                                                                                                                                                                                                	                  v       g�^�     �      !   $      2file1 = "file1.csv"  # Path to your first CSV file5��       	                                       5�_�                        	    ����                                                                                                                                                                                                                                                                                                                                	                  v       g�^�     �      !   $      -file1 = ".csv"  # Path to your first CSV file5��       	                                       5�_�                    !   	    ����                                                                                                                                                                                                                                                                                                                            !   	       !          v       g�^�     �       "   $      3file2 = "file2.csv"  # Path to your second CSV file5��        	                  a                     5�_�                    !   	    ����                                                                                                                                                                                                                                                                                                                            !   	       !          v       g�^�    �       "   $      .file2 = ".csv"  # Path to your second CSV file5��        	                  a                     �                         k                    �                          r                     �                          q                     �                         p                    5�_�                    "       ����                                                                                                                                                                                                                                                                                                                            "          "          v       g�^�     �   !   #   $      @output_file = "merged_output.csv"  # Path to save the merged CSV5��    !                     �                     5�_�      	              "       ����                                                                                                                                                                                                                                                                                                                            "          "          v       g�^�     �   !   #   $      3output_file = ".csv"  # Path to save the merged CSV5��    !                     �                     �    !   &                  �                     �    !   %                  �                     �    !   $                 �                    �    !   &                 �                    �    !   (                  �                     �    !   '                 �                    5�_�      
           	   "   6    ����                                                                                                                                                                                                                                                                                                                            "          "          v       g�^�    �   !   %   $      [output_file = "output/recurring_addons_with_parent_info.csv"  # Path to save the merged CSV5��    !          M         �      M       U       5�_�   	               
           ����                                                                                                                                                                                                                                                                                                                            "          "          v       g�^�    �      !   &      Bfile1 = "input/recurrin_addons.csv"  # Path to your first CSV file5��                         ,                     5��