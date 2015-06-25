.class Lde/gdata/mobilesecurity/activities/antitheft/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/y;->a:Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/y;->a:Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;->deinstallSmsApps()V

    .line 72
    return-void
.end method
