.class Lde/gdata/mobilesecurity/privacy/t;
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
    .line 241
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/t;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/t;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->setSuppressCommunication(Z)V

    .line 246
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/t;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->updateContact()V

    .line 247
    return-void
.end method
