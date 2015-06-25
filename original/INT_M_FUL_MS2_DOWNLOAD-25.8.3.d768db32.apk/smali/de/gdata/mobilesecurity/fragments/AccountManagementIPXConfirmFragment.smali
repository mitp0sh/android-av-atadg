.class public Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 163
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x8

    .line 226
    .line 228
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide v2, 0xe38360c0d8ecc7fL    # 3.630934164478182E-240

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 234
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide v4, -0x7b0f7dd23ef00419L    # -6.938602445778975E-285

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 238
    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/util/MyCrypto;->encrypt([B[B[BI)[B

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyCrypto;->encodeToBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDATA1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lde/gdata/mobilesecurity/fragments/k;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/fragments/k;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/Context;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->j:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public isMobileNetworkAvailable()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getServiceState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 69
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->j:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 74
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    const v0, 0x7f0b007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a:Landroid/widget/Button;

    const v2, 0x7f0d004a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->a:Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/e;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/e;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0b0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->b:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const v0, 0x7f0b0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->c:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->e:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->e:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/f;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/f;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0b007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->f:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->f:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/g;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/g;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->g:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->g:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/h;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/h;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0b007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->h:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/i;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/i;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0b0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->i:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->i:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/j;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/j;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 150
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 152
    return-object v1
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountManagementIPXConfirmFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public sendSMSToIpx(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 192
    const-string v1, "80888"

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 193
    return-void
.end method
