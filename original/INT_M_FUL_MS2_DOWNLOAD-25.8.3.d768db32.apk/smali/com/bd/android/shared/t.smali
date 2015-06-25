.class Lcom/bd/android/shared/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;


# instance fields
.field final synthetic a:Lcom/bd/android/shared/LicenseProdActivator;


# direct methods
.method constructor <init>(Lcom/bd/android/shared/LicenseProdActivator;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/bd/android/shared/t;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductLicenseChanged(I)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bd/android/shared/t;->a:Lcom/bd/android/shared/LicenseProdActivator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator;Z)Z

    return-void
.end method
