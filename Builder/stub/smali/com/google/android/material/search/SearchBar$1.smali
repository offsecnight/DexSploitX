.class Lcom/google/android/material/search/SearchBar$1;
.super Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollProgressListener;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(FIF)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    invoke-static {p1}, Lcom/google/android/material/search/SearchBar;->access$000(Lcom/google/android/material/search/SearchBar;)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    .line 170
    invoke-static {p1}, Lcom/google/android/material/search/SearchBar;->access$100(Lcom/google/android/material/search/SearchBar;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    invoke-static {p2}, Lcom/google/android/material/search/SearchBar;->access$000(Lcom/google/android/material/search/SearchBar;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p1, p2, p3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p1

    .line 171
    iget-object p2, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    invoke-static {p2}, Lcom/google/android/material/search/SearchBar;->access$200(Lcom/google/android/material/search/SearchBar;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
