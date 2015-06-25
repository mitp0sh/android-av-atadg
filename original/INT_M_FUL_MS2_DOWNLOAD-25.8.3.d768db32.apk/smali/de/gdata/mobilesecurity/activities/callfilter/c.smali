.class Lde/gdata/mobilesecurity/activities/callfilter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/c;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/c;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;->a(Lde/gdata/mobilesecurity/activities/callfilter/BlockCall;)V

    .line 77
    return-void
.end method
