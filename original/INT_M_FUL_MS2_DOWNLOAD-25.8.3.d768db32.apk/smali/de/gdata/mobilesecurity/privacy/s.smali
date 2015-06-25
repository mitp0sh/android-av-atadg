.class Lde/gdata/mobilesecurity/privacy/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/r;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/r;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a(Lde/gdata/mobilesecurity/privacy/DetailSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a(Lde/gdata/mobilesecurity/privacy/DetailSettings;Z)Z

    .line 191
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b(Lde/gdata/mobilesecurity/privacy/DetailSettings;Z)V

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b(Lde/gdata/mobilesecurity/privacy/DetailSettings;)V

    .line 193
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->checkCheckboxes()V

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b(Lde/gdata/mobilesecurity/privacy/DetailSettings;Z)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/s;->a:Lde/gdata/mobilesecurity/privacy/r;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b(Lde/gdata/mobilesecurity/privacy/DetailSettings;Z)V

    goto :goto_0
.end method
