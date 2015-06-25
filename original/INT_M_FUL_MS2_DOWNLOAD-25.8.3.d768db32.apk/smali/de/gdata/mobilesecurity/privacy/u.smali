.class Lde/gdata/mobilesecurity/privacy/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/DetailSettings;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/DetailSettings;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/u;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/u;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c(Lde/gdata/mobilesecurity/privacy/DetailSettings;)Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/u;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->tryHide(Z)V

    goto :goto_0
.end method
