on adding folder items to this_folder after receiving these_items
	set gpg_email to {{gpg_email}}
	repeat with i from 1 to number of items in these_items
		set this_item to item i of these_items
		set the item_info to info for this_item
		set the item_path to the quoted form of the POSIX path of this_item
		set user_library_path to POSIX path of (path to library folder from user domain)
		set destination_directory to user_library_path & "Mobile Documents/com~apple~CloudDocs/"
		set the destination_path to the quoted form of (destination_directory & (name of the item_info) & ".gpg")
		do shell script ("/usr/local/bin/gpg --recipient " & gpg_email & " --batch --yes -o " & destination_path & " --encrypt " & item_path)
	end repeat
end adding folder items to
