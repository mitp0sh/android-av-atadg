.class public Lde/gdata/mobilesecurity/intents/GDApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    buildConfigClass = Lde/gdata/mobilesecurity/BuildConfig;
    formUri = "http://212.23.140.102:80/acra/msa"
    formUriBasicAuthLogin = "msa"
    formUriBasicAuthPassword = "msa"
    httpMethod = .enum Lorg/acra/sender/HttpSender$Method;->PUT:Lorg/acra/sender/HttpSender$Method;
    mode = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    reportType = .enum Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;
    resDialogText = 0x7f0d020c
.end annotation


# static fields
.field public static final EXTERN_URI:Ljava/lang/String; = "http://212.23.140.102:80/acra/msa"

.field public static final INTERN_URI:Ljava/lang/String; = "http://appdevlinux.gdata.de:5983/acra/msa"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 36
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 38
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAcraUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ACRAConfiguration;->setFormUri(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;

    .line 39
    invoke-static {v0}, Lorg/acra/ACRA;->setConfig(Lorg/acra/ACRAConfiguration;)V

    .line 41
    :cond_0
    const-string v0, "REQ4TI53A9078D8-2A32-4FC1-917A-93F080B31D02"

    invoke-static {p0, v0}, Lcom/bd/android/shared/LicenseActivator;->initLicense(Landroid/content/Context;Ljava/lang/String;)Lcom/bd/android/shared/LicenseActivator;

    .line 42
    invoke-static {p0}, Lcom/bitdefender/scanner/Scanner;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method
