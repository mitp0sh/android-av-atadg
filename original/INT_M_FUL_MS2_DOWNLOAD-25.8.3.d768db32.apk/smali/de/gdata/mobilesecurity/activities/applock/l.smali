.class Lde/gdata/mobilesecurity/activities/applock/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/l;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/l;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    .line 144
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
