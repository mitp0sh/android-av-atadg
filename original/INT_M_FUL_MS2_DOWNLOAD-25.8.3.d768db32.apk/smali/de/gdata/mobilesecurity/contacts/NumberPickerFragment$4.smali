.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    # getter for: Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->access$300(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4$1;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4$1;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    const/4 v0, 0x1

    return v0
.end method
