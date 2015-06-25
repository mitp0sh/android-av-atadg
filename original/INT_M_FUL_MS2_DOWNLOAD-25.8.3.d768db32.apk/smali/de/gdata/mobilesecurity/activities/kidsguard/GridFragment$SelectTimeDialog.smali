.class public Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static APP_IDENTIFIER:Ljava/lang/String;


# instance fields
.field public appIdentifier:Ljava/lang/String;

.field public gridFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const-string v0, "APP_IDENTIFIER"

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->APP_IDENTIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;-><init>()V

    .line 310
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 311
    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->APP_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 314
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->APP_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->appIdentifier:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 325
    .line 326
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 327
    const v1, 0x7f030059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 331
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d02d5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0240

    new-instance v5, Lde/gdata/mobilesecurity/activities/kidsguard/p;

    invoke-direct {v5, p0, v0, v2, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/p;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;Landroid/view/View;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d021e

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/o;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/o;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/n;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/n;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 380
    return-object v0
.end method
