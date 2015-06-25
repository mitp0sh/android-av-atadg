.class Lcom/google/android/vending/licensing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/vending/licensing/c;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/c;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    iput p2, p0, Lcom/google/android/vending/licensing/e;->a:I

    iput-object p3, p0, Lcom/google/android/vending/licensing/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/vending/licensing/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 236
    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    iget-object v0, v0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->b(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    invoke-static {v1}, Lcom/google/android/vending/licensing/c;->a(Lcom/google/android/vending/licensing/c;)Lcom/google/android/vending/licensing/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    invoke-static {v0}, Lcom/google/android/vending/licensing/c;->b(Lcom/google/android/vending/licensing/c;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    invoke-static {v0}, Lcom/google/android/vending/licensing/c;->a(Lcom/google/android/vending/licensing/c;)Lcom/google/android/vending/licensing/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    iget-object v1, v1, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-static {v1}, Lcom/google/android/vending/licensing/LicenseChecker;->c(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/google/android/vending/licensing/e;->a:I

    iget-object v3, p0, Lcom/google/android/vending/licensing/e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/licensing/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/vending/licensing/f;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    iget-object v0, v0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/google/android/vending/licensing/e;->d:Lcom/google/android/vending/licensing/c;

    invoke-static {v1}, Lcom/google/android/vending/licensing/c;->a(Lcom/google/android/vending/licensing/c;)Lcom/google/android/vending/licensing/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->b(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V

    .line 273
    :cond_0
    return-void
.end method
