Total = 0
SuccessCount = 0
FailedCount = 0

NotFullyChecked = true

function PrintCompleteMessage()
    if not NotFullyChecked then
    local outputTotal = tostring(Total)
    local outputSuccessCount = tostring(SuccessCount)
    local outputFaildCount = tostring(FailedCount)
    print("��֤��� �ɹ�" .. outputSuccessCount .. "ʧ��".. outputFaildCount .."�ܼ�".. outputTotal)
    end
end

function ReadFileList()
    -- ���ļ�
    local file = io.open("filelist.txt", "r")
    -- ����ļ��Ƿ����
    if file then
        print("�ļ��б���� ��ʼ��֤")
      -- ��ȡ�ļ���ÿһ��
      for line in file:lines() do
        Total = Total + 1
        -- ���ݸ��ļ����
        CheckThisfile(line)
      end
         -- �ر��ļ�
         NotFullyChecked = false
         file:close()
         PrintCompleteMessage() --���ͳ����Ϣ
    else
          -- �ļ������ڣ����������Ϣ
          print("���� δ�ҵ��ļ��б�")
          os.exit()
    end
end

function CheckThisfile(filepath)
 local path = "../"..filepath --ת��Ϊ���·��
 local file = io.open(path, "r")
if file then --�������ļ��Ƿ����
 SuccessCount = SuccessCount + 1
 io.close(file)
else
 print(filepath .. "��ʧ")
 FailedCount = FailedCount + 1
end
end


while NotFullyChecked do
    ReadFileList()
end