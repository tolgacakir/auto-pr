# GitLab Merge Request Automation Script

Bu script, GitLab projelerinde kaynak (`source`) ve hedef (`target`) branch'leri arasında otomatik olarak bir merge request açmanızı sağlar. Script, Windows CMD üzerinden çalıştırılabilir ve kullanımı oldukça basittir.

## Gereksinimler

Bu scripti çalıştırmadan önce aşağıdaki bilgileri edinmeniz ve scriptte gerekli değişiklikleri yapmanız gerekmektedir:

- **Access Token**: GitLab API'yi kullanabilmek için bir kişisel erişim token'ına (access token) ihtiyacınız var.
- **Project ID**: Merge request açacağınız GitLab projesinin ID'sini bilmeniz gerekmektedir.

## Adımlar

### 1. Access Token Bul
GitLab'da bir kişisel erişim token'ı oluşturun. Bunu aşağıdaki adımları takip ederek yapabilirsiniz:

1. GitLab hesabınıza giriş yapın.
2. Sağ üst köşedeki profil simgenize tıklayın ve **Settings** bölümüne gidin.
3. Sol menüde **Access Tokens** seçeneğine tıklayın.
4. Bir token oluşturun ve bunu scriptteki `access_token` değişkenine ekleyin.

```batch
set access_token=your_access_token
```

### 2. Project ID Bul
GitLab'daki projenizin ID'sini öğrenmek için proje ana sayfasına gidin. Projenin **Settings** -> **General** sayfasında Project ID numarasını bulabilirsiniz.

Bu ID'yi scriptteki `project_id` değişkenine ekleyin:
```
set project_id=glpat_your_project_id
```

### 3. Scriptin Bulunduğu Dizinde CMD Başlat
Script dosyasının bulunduğu dizinde bir CMD terminali açın. 


### 4. Örnek Kullanım
Aşağıdaki komutla scripti çalıştırabilirsiniz:
```batch
mr.bat -s your-source-branch -t your-target-branch
```

- `-s`: Kaynak branch ismini belirleyin (source branch).
- `-t`: Hedef branch ismini belirleyin (target branch).

Örneğin:
```batch
mr.bat -s feature-branch -t main
```

Bu komut, `feature-branch`'ten `main` branch'ine bir merge request açacaktır.

### 5. Çıktı
Script başarıyla çalıştığında aşağıdaki mesajı alacaksınız:
```
Successful
```

Eğer bir hata oluşursa:
```
Failed
```

### Notlar
- Script, GitLab API'sini kullanır ve kişisel erişim token'ınızı (`access_token`) gerektirir.
- Script, CMD terminalinde çalıştırılmak üzere tasarlanmıştır.

### Lisans
Bu proje MIT Lisansı ile lisanslanmıştır. Daha fazla bilgi için `LICENSE` dosyasına bakabilirsiniz.
