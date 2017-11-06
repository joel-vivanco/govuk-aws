{
    "Version": "2012-10-17",
    "Statement":[
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": "arn:aws:logs:*:*:*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::${bucket_name}/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::${bucket_name}"
            ]
        },
        {
            
            "Effect": "Allow",
            "Action": [
                "rds:DescribeDBLogFiles",
                "rds:DownloadDBLogFilePortion"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
