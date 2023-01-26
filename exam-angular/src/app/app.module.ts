import { NgModule } from "@angular/core";
import { BrowserModule } from "@angular/platform-browser";

import { AppRoutingModule } from "./app-routing.module";
import { AppComponent } from "./app.component";
import { LoginComponent } from "./login/login.component";
import { MatRadioModule } from "@angular/material/radio";
import { MatInputModule } from "@angular/material/input";
import { MatFormFieldModule } from "@angular/material/form-field";

import { FormsModule } from "@angular/forms";

@NgModule({
   declarations: [AppComponent, LoginComponent],
   imports: [
      BrowserModule,
      AppRoutingModule,
      MatRadioModule,
      MatFormFieldModule,
      MatInputModule,
      FormsModule,
   ],
   providers: [],
   bootstrap: [AppComponent],
})
export class AppModule {}
