.class public Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 984
    const-string v0, "TAG"

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;
    .locals 1

    .prologue
    .line 987
    new-instance v0, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;-><init>()V

    .line 989
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 994
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 997
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 998
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0240

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/intents/ai;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/intents/ai;-><init>(Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d004b

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1007
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
