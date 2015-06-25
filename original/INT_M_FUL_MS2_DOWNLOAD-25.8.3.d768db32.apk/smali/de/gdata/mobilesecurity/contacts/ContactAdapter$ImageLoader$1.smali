.class Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

.field final synthetic val$first:Ljava/lang/Integer;

.field final synthetic val$pic:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;->this$1:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    iput-object p2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;->val$first:Ljava/lang/Integer;

    iput-object p3, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;->val$pic:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;->this$1:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;->val$first:Ljava/lang/Integer;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$1;->val$pic:Landroid/graphics/drawable/Drawable;

    # invokes: Lde/gdata/mobilesecurity/contacts/ContactAdapter;->imageLoaded(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->access$100(Lde/gdata/mobilesecurity/contacts/ContactAdapter;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method
