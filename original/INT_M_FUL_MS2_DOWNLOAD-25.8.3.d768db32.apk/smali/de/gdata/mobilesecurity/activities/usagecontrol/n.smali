.class Lde/gdata/mobilesecurity/activities/usagecontrol/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/l;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/n;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    return-void
.end method
