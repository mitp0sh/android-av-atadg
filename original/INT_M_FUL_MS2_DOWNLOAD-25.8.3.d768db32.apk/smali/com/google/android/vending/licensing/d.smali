.class Lcom/google/android/vending/licensing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/vending/licensing/LicenseChecker;

.field final synthetic b:Lcom/google/android/vending/licensing/c;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/c;Lcom/google/android/vending/licensing/LicenseChecker;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/vending/licensing/d;->b:Lcom/google/android/vending/licensing/c;

    iput-object p2, p0, Lcom/google/android/vending/licensing/d;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/google/android/vending/licensing/d;->b:Lcom/google/android/vending/licensing/c;

    iget-object v0, v0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/google/android/vending/licensing/d;->b:Lcom/google/android/vending/licensing/c;

    invoke-static {v1}, Lcom/google/android/vending/licensing/c;->a(Lcom/google/android/vending/licensing/c;)Lcom/google/android/vending/licensing/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->a(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/vending/licensing/d;->b:Lcom/google/android/vending/licensing/c;

    iget-object v0, v0, Lcom/google/android/vending/licensing/c;->a:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/google/android/vending/licensing/d;->b:Lcom/google/android/vending/licensing/c;

    invoke-static {v1}, Lcom/google/android/vending/licensing/c;->a(Lcom/google/android/vending/licensing/c;)Lcom/google/android/vending/licensing/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->b(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/f;)V

    .line 217
    return-void
.end method
