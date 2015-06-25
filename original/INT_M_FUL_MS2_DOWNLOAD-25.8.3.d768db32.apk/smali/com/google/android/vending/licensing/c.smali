.class Lcom/google/android/vending/licensing/c;
.super Lcom/google/android/vending/licensing/ILicenseResultListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/vending/licensing/LicenseChecker;

.field private final b:Lcom/google/android/vending/licensing/f;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-direct {p0}, Lcom/google/android/vending/licensing/ILicenseResultListener$Stub;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/google/android/vending/licensing/c;->b:Lcom/google/android/vending/licensing/f;

    .line 212
    new-instance v0, Lcom/google/android/vending/licensing/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/vending/licensing/d;-><init>(Lcom/google/android/vending/licensing/c;Lcom/google/android/vending/licensing/LicenseChecker;)V

    iput-object v0, p0, Lcom/google/android/vending/licensing/c;->c:Ljava/lang/Runnable;

    .line 219
    invoke-direct {p0}, Lcom/google/android/vending/licensing/c;->a()V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/licensing/c;)Lcom/google/android/vending/licensing/f;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/vending/licensing/c;->b:Lcom/google/android/vending/licensing/f;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 278
    const-string v0, "LicenseChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->d(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/c;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "LicenseChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->d(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method static synthetic b(Lcom/google/android/vending/licensing/c;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/vending/licensing/c;->b()V

    return-void
.end method


# virtual methods
.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->a(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.vending.licensing.LicenseChecker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SIGNED_DATA"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SIGNATURE"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    iget-object v0, p0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->d(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/licensing/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/vending/licensing/e;-><init>(Lcom/google/android/vending/licensing/c;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method
