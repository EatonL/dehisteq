function output = de_histeq(I)

info=imfinfo(I); % I must be a file name,not a matrix
source=imread(I);
imgSize=size(source);

if numel(imgSize)>2  % determine whether the img colortype is grayscale
    error('please input a gray img');
end

L=2^info.BitDepth;  % Generally,8
recordin=[0,0];
sk=[0,0];
recordout=[0,0];
change=[0,0];

for i=3:1:L  % init the parameters
    recordin(i)=0;
    recordout(i)=0;
    sk(i)=0;
    change(i)=0;
end

for i=1:1:info.Height  % statistical probabilities
    for j=1:1:info.Width
        recordin(source(i,j)+1)=recordin(source(i,j)+1)+1;
    end
end

n=info.Height*info.Width;  % pixel count

for i=1:1:L
    recordin(i)=recordin(i)/n;  % p(k)=sum(n(i)/n)
end

sk(1)=1-recordin(1);

for i=2:1:L
   sk(i)=sk(i-1)+(1-recordin(i));  % s(i)=sum(1-p(k))
end

for i=1:1:L
    t=floor(sk(i)+0.5);  % Integer function 
    change(i)=t;
end

output=zeros(imgSize);
for i=1:1:info.Height
    for j=1:1:info.Width
        output(i,j)=change(source(i,j)+1);
    end
end

output=uint8(output);  % dehisteq img

for i=1:1:info.Height
    for j=1:1:info.Width
        recordout(output(i,j)+1)=recordout(output(i,j)+1)+1;  % histogram
    end
end
 
plot(recordout);
    




