.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4$1;->this$1:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4$1;->this$1:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    iget-object v8, v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4$1;->this$1:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    move v11, v5

    move v12, v5

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    return-void
.end method
