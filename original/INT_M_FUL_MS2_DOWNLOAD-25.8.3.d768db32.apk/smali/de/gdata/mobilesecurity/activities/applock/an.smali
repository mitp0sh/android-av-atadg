.class Lde/gdata/mobilesecurity/activities/applock/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/an;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 571
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->closeDialog()V

    .line 572
    return-void
.end method
