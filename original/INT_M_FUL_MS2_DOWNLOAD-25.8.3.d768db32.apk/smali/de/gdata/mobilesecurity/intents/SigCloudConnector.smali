.class public Lde/gdata/mobilesecurity/intents/SigCloudConnector;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/EditText;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field private g:Ljava/security/KeyStore;

.field private h:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    .line 51
    return-void
.end method

.method private declared-synchronized a()Ljava/security/KeyStore;
    .locals 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->g:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 108
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->g:Ljava/security/KeyStore;

    .line 109
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->g:Ljava/security/KeyStore;

    const-string v2, "Bochum234"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 111
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->g:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->c()V

    return-void
.end method

.method private declared-synchronized b()Ljava/security/KeyStore;
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->h:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/key.p12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v1, "PKCS12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->h:Ljava/security/KeyStore;

    .line 119
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->h:Ljava/security/KeyStore;

    const-string v2, "Bochum234"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 121
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->h:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->a()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->b()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->f:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    new-instance v2, Lde/gdata/mobilesecurity/intents/ca;

    invoke-direct {v2, p0, v0, v1}, Lde/gdata/mobilesecurity/intents/ca;-><init>(Lde/gdata/mobilesecurity/intents/SigCloudConnector;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/intents/ca;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030098

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->setContentView(I)V

    .line 58
    const v0, 0x7f0b0346

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->e:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0b0348

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->f:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0b0344

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->a:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0b0347

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->c:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0b0349

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->d:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->a:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->e:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/intents/by;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/by;-><init>(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/SigCloudConnector;->f:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/intents/bz;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/bz;-><init>(Lde/gdata/mobilesecurity/intents/SigCloudConnector;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method
