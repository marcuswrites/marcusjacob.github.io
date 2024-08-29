cd "C:\Users\Reuben Jacob\Documents\reubenjacob.me\"
START /WAIT cmd.exe /c jekyll build
START /WAIT cmd.exe /c aws s3 sync "C:\Users\Reuben Jacob\Documents\reubenjacob.me\_site" s3://reubenjacob.me
START /WAIT cmd.exe /c aws cloudfront create-invalidation --distribution-id E3LJH01961QX96 --paths "/*"
