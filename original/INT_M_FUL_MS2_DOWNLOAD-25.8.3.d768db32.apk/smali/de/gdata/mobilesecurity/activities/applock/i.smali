.class Lde/gdata/mobilesecurity/activities/applock/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/i;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/i;->a:Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;->a(Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;)V

    .line 120
    return-void
.end method
