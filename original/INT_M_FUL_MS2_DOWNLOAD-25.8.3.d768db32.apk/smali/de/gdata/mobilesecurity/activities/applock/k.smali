.class Lde/gdata/mobilesecurity/activities/applock/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/k;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/k;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    .line 132
    return-void
.end method
